import os
import torch
import torch.nn as nn
from torch.autograd import Variable
from torchvision import transforms
from dataset import Minist
from convNet import convNet
from resNet import resnet18
from fcNet import fcNet


# batch_size = 256
batch_size = 128
use_cuda = True
best_loss = float('inf')
train_loss = 0.
train_loss_all = []
test_loss = 0.
path = '/home/lxg/codedata/minist'

transform = transforms.Compose([
                        # transforms.ToTensor()
                        transforms.RandomCrop([28,28])
])

train_data = Minist(root='/home/lxg/codedata/minist',
                    file_list='train_train.csv',
                    train=True,
                    transform=transform)
train_loader = torch.utils.data.DataLoader(train_data, 
                                    batch_size=batch_size,
                                    shuffle=True,
                                    num_workers=2)
test_data = Minist(root='/home/lxg/codedata/minist',
                    file_list='train_test.csv',
                    train=False,
                    transform=transform)
test_loader = torch.utils.data.DataLoader(test_data,
                                    batch_size=batch_size,
                                    shuffle=True,
                                    num_workers=2)


# learning_rate = 0.01  # learning rate should be with optimitise algorithm
# optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)
# learning_rate = 0.001; optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate, weight_decay=0.01)

# num_epoch = 50; model = convNet(); learning_rate = 0.1; optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate, weight_decay=0.001)
num_epoch = 50; model = resnet18(); learning_rate = 0.01; optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate, weight_decay=0.0005)
# num_epoch = 100; model = fcNet(); learning_rate = 0.1; optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate, weight_decay=0.0001)

# model.load_state_dict(torch.load(os.path.join(path,'params.pkl')))  # load pretrained model

if use_cuda:
    model.cuda()

criterion = nn.CrossEntropyLoss()

print('batch_size: %d' % (batch_size))                                    
print('train_dataset: %d idx: %d' % (len(train_data), len(train_loader)))
print('test_dataset: %d idx: %d' % (len(test_data), len(test_loader)))


def train(epoch):
    model.train()
    global train_loss
    train_loss = 0
    for batch_idx, (images, labels) in enumerate(train_loader):
        if use_cuda:
            images = images.cuda()
            labels = labels.cuda()
        images = Variable(images)
        labels = Variable(labels)
        optimizer.zero_grad()
        output = model(images)
        loss = criterion(output, labels)
        loss.backward()
        optimizer.step()
        train_loss += loss.data[0]
        if (batch_idx+1) % 10 == 0:
            print ('train Epoch [%d/%d], Iter [%d/%d] lr: %8f Loss: %.4f ' 
                   %(epoch+1, num_epoch, batch_idx+1, len(train_loader), learning_rate, loss.data[0]))
    train_loss = train_loss / len(train_loader)
    train_loss_all.append(train_loss)

def test(epoch):
    model.eval()
    global test_loss
    test_loss = 0
    total = 0
    correct = 0
    for batch_idx, (images, labels) in enumerate(test_loader):
        if use_cuda:
            images = images.cuda()
            labels = labels.cuda()
        images = Variable(images, requires_grad=False)
        labels = Variable(labels, requires_grad=False)
        outputs = model(images)
        loss = criterion(outputs, labels)
        test_loss += loss.data[0]
        _, predicted = torch.max(outputs.data, 1)
        total += labels.data.size(0)
        correct += (predicted == labels.data).sum()

        if (batch_idx+1) % 10 == 0:
            print ('test Epoch [%d/%d], Iter [%d/%d] Loss: %.4f' 
                   %(epoch+1, num_epoch, batch_idx+1, len(test_loader), loss.data[0]))

    global best_loss
    if test_loss < best_loss:
        best_loss = test_loss
        print('saving...')
        torch.save(model.state_dict(), os.path.join(path,'params.pkl'))
    
    test_loss = test_loss / len(test_loader)
    accuracy = 100. * correct / total
    print('Test Accuracy of the model on the %d test images: %f %%' % (len(test_data), accuracy))
    print("epoch %d train_loss:%.5f, test_loss %.5f, best_test_loss %.5f, accuracy %.5f\n" % (
            epoch, train_loss, test_loss, best_loss/len(test_loader), accuracy))

for i in range(num_epoch):
    train(i)
    test(i)
    
    # learning rate decay
    # if i == 2 or i == 4 or i == 6 or i == 8:
    #     learning_rate *= 0.1
    # if i > 1 and train_loss_all[i] > train_loss_all[i-1]:
        # learning_rate *= 0.1
    optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate, weight_decay=0.0005)
    # early stop, model with less loss has been saved, so this is not so useful
    

class AverageMeter(object):
    def __init__(self):
        self.reset()

    def reset(self):
        self.val = 0
        self.avg = 0
        self.sum = 0
        self.count = 0

    def update(self, val, n=1):
        self.val = val
        self.sum += val * n
        self.count += n
        self.avg = self.sum / self.count

class Dict(object):
    def __init__(self):
        self.dict = {}
        self.size = 0
        
    def get(self, val):
        if self.dict.__contains__(val):
            return self.dict[val]
        else:
            self.size += 1
            self.dict[val] = self.size - 1
            return self.size - 1

def accuracy(output, target, topk=(1,)):
    """Computes the precision@k for the specified values of k"""
    maxk = max(topk)
    batch_size = target.size(0)

    _, pred = output.topk(maxk, 1, True, True)
    pred = pred.t()
    correct = pred.eq(target.view(1, -1).expand_as(pred))

    res = []
    for k in topk:
        correct_k = correct[:k].view(-1).float().sum(0, keepdim=True)
        res.append(correct_k.mul_(100.0 / batch_size))
    return res

def to_python_float(t):
    if hasattr(t, 'item'):
        return t.item()
    else:
        return t[0]

from textgrad.tasks.base import Dataset

from bigcodebench.data import get_bigcodebench

class BigCodeBench(Dataset):
    def __init__(self, root:str=None, split: str = "train", subset: str="full"):
        self.dataset = get_bigcodebench(subset=subset)
        if split == "train" or split == "val":
            self.dataset = list(self.dataset.values())[:50]
        elif split == "test":
            self.dataset = list(self.dataset.values())[50:]
        else:
            raise ValueError("split must be 'train' or 'test'")

    def __getitem__(self, index):
        row = self.dataset[index]
        return row["instruct_prompt"], row["test"], row["entry_point"]

    def __len__(self):
        return len(self.dataset)

    def get_task_description(self):
        return "Write the Python function."
    
using System;

class Node
{
    public int data;
    public Node left, right;

    public Node(int value)
    {
        data = value;
    }
}

class Program
{
    static bool IsBST(Node root, long min, long max)
    {
        if (root == null)
            return true;

        if (root.data <= min || root.data >= max)
            return false;

        return IsBST(root.left, min, root.data) &&
               IsBST(root.right, root.data, max);
    }

    static void Main()
    {
        Node root = new Node(10);

        root.left = new Node(5);
        root.right = new Node(15);

        root.left.left = new Node(3);
        root.left.right = new Node(7);

        if (IsBST(root, long.MinValue, long.MaxValue))
            Console.WriteLine("Valid BST");
        else
            Console.WriteLine("Not a BST");
    }
}

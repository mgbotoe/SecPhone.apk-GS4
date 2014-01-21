.class public Lcom/android/phone/RejectCallWithMsgContentCovered;
.super Lcom/android/phone/RejectCallWithMsgContent;
.source "RejectCallWithMsgContentCovered.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RejectCallWithMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040096

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/phone/RejectCallWithMsgContent;->onFinishInflate()V

    .line 38
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    return-void
.end method

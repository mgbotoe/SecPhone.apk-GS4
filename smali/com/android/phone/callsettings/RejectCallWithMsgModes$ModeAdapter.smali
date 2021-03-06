.class Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RejectCallWithMsgModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAdapter"
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    .line 103
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 104
    iput-object p4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    .line 105
    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$100(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$002(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400a2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    .line 116
    const v3, 0x7f0a02c5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f090845

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :cond_1
    :goto_0
    const v3, 0x7f0a02c8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    .line 125
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$000(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    :goto_1
    const v3, 0x7f0a02c6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 131
    .local v1, radioLayout:Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v3, 0x7f0a02c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 144
    .local v2, textLayout:Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-object p2

    .line 120
    .end local v1           #radioLayout:Landroid/widget/LinearLayout;
    .end local v2           #textLayout:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f090846

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

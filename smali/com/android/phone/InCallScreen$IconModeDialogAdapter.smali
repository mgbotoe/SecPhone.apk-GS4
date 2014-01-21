.class Lcom/android/phone/InCallScreen$IconModeDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconModeDialogAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 12834
    iput-object p1, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->mContext:Landroid/content/Context;

    .line 12835
    iput-object p2, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->mContext:Landroid/content/Context;

    .line 12836
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 12840
    iget-object v0, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIconModeMwItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7000(Lcom/android/phone/InCallScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 12845
    iget-object v0, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIconModeMwItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$7000(Lcom/android/phone/InCallScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 12850
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 12855
    const/4 v5, 0x0

    .line 12856
    .local v5, viewHolder:Lcom/android/phone/InCallScreen$ViewHolder;
    if-nez p2, :cond_1

    .line 12857
    iget-object v6, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 12858
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04009e

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 12859
    new-instance v5, Lcom/android/phone/InCallScreen$ViewHolder;

    .end local v5           #viewHolder:Lcom/android/phone/InCallScreen$ViewHolder;
    invoke-direct {v5}, Lcom/android/phone/InCallScreen$ViewHolder;-><init>()V

    .line 12860
    .restart local v5       #viewHolder:Lcom/android/phone/InCallScreen$ViewHolder;
    const v6, 0x7f0a02a4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 12861
    const v6, 0x7f0a0189

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->textView:Landroid/widget/TextView;

    .line 12862
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12868
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$IconModeDialogAdapter;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIconModeMwItems:Ljava/util/List;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$7000(Lcom/android/phone/InCallScreen;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 12870
    .local v1, iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v6, "popup_icon"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12871
    .local v0, iconId:I
    iget-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12873
    const-string v6, "title"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12874
    .local v4, title:Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12875
    .local v3, message:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12877
    :cond_0
    iget-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12883
    :goto_1
    iget-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12885
    return-object p2

    .line 12865
    .end local v0           #iconId:I
    .end local v1           #iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #viewHolder:Lcom/android/phone/InCallScreen$ViewHolder;
    check-cast v5, Lcom/android/phone/InCallScreen$ViewHolder;

    .restart local v5       #viewHolder:Lcom/android/phone/InCallScreen$ViewHolder;
    goto :goto_0

    .line 12880
    .restart local v0       #iconId:I
    .restart local v1       #iconModeItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    iget-object v6, v5, Lcom/android/phone/InCallScreen$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

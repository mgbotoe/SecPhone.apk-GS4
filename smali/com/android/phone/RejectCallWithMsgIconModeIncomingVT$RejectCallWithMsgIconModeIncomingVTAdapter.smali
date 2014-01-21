.class public Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMsgIconModeIncomingVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectCallWithMsgIconModeIncomingVTAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    .line 256
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 257
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    iget-object v0, v0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #calls: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->findItem(I)Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$100(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 271
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 276
    const/4 v7, 0x0

    .line 278
    .local v7, viewHolder:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 279
    new-instance v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;

    .end local v7           #viewHolder:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    invoke-direct {v7, p0, v10}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;-><init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$1;)V

    .line 280
    .restart local v7       #viewHolder:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$300(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04009c

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 283
    const v8, 0x7f0a02bd

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    .line 284
    const v8, 0x7f0a02bf

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 285
    const v8, 0x7f0a02a8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 286
    const v8, 0x7f0a02c0

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->checkBoxView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 287
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->checkBoxView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 289
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    const-string v8, "RejectCallWithMsgIconModeIncomingVTAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #calls: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->findItem(I)Ljava/util/HashMap;
    invoke-static {v8, p1}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$100(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;I)Ljava/util/HashMap;

    move-result-object v4

    .line 298
    .local v4, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v4, :cond_3

    .line 299
    const-string v8, "position"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    .local v3, index:I
    const-string v8, "iconId"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, iconId:I
    const-string v8, "title"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 302
    .local v6, title:Ljava/lang/String;
    const-string v8, "message"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    .local v5, message:Ljava/lang/String;
    const-string v8, "RejectCallWithMsgIconModeIncomingVTAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "item index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v8, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->TILES_ICONS:[I

    aget v0, v8, v2

    .line 307
    .local v0, drawableId:I
    iget-object v8, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    #getter for: Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->access$300(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 308
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    iget-object v9, v9, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;->mSendMsgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    :cond_0
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_1
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 319
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 320
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    .end local v0           #drawableId:I
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconId:I
    .end local v3           #index:I
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :goto_2
    return-object p2

    .line 292
    .end local v4           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #viewHolder:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    check-cast v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;

    .restart local v7       #viewHolder:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;
    goto/16 :goto_0

    .line 315
    .restart local v0       #drawableId:I
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v2       #iconId:I
    .restart local v3       #index:I
    .restart local v4       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v5       #message:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    :cond_2
    iget-object v8, v7, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$RejectCallWithMsgIconModeIncomingVTAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 325
    .end local v0           #drawableId:I
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconId:I
    .end local v3           #index:I
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_3
    const-string v8, "RejectCallWithMsgIconModeIncomingVTAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The item with position ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") doesn\'t exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

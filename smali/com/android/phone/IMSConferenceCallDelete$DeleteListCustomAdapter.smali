.class Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IMSConferenceCallDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteListCustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/CallerList;",
        ">;"
    }
.end annotation


# instance fields
.field private deleteItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallerList;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field private isCheckedConfrim:[Z

.field private mHeaderCount:I

.field private rsrc:I

.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallDelete;


# direct methods
.method public constructor <init>(Lcom/android/phone/IMSConferenceCallDelete;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "viewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallerList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/CallerList;>;"
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->this$0:Lcom/android/phone/IMSConferenceCallDelete;

    .line 320
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 317
    invoke-static {}, Lcom/android/phone/IMSConferenceCallDelete;->access$000()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->mHeaderCount:I

    .line 321
    iput-object p4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->deleteItems:Ljava/util/ArrayList;

    .line 322
    iput p3, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->rsrc:I

    .line 323
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->deleteItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    .line 324
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 341
    if-nez p2, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->this$0:Lcom/android/phone/IMSConferenceCallDelete;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/phone/IMSConferenceCallDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 343
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->rsrc:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 346
    :cond_0
    const v4, 0x7f0a019e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 347
    .local v2, itemNameText:Landroid/widget/TextView;
    const v4, 0x7f0a019f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 348
    .local v3, itemNumberText:Landroid/widget/TextView;
    const v4, 0x7f0a01a0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 350
    .local v1, itemCheckBox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->deleteItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerList;

    .line 351
    .local v0, e:Lcom/android/phone/CallerList;
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/android/phone/CallerList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v0}, Lcom/android/phone/CallerList;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 357
    :cond_1
    return-object p2
.end method

.method public setAllChecked(Z)V
    .locals 3
    .parameter "ischeked"

    .prologue
    .line 327
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    array-length v1, v2

    .line 328
    .local v1, tempSize:I
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    aput-boolean p1, v2, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public setChecked(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 334
    iget v1, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->mHeaderCount:I

    sub-int v0, p1, v1

    .line 335
    .local v0, realPos:I
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallDelete$DeleteListCustomAdapter;->isCheckedConfrim:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    aput-boolean v1, v2, v0

    .line 336
    return-void

    .line 335
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

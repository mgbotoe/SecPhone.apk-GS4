.class public Lcom/android/phone/RoamingAutoDialSettings;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mListView2:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    return-void
.end method

.method private getSelectedMode()I
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f0400b2

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSettings;->setContentView(I)V

    .line 45
    const v2, 0x7f0800b8

    const v3, 0x109000f

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 46
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x7f0800b7

    const v3, 0x1090003

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 47
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x7f0a02ec

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    .line 48
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/RoamingAutoDialSettings$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialSettings$1;-><init>(Lcom/android/phone/RoamingAutoDialSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    .line 58
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 60
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 62
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-object v1

    .line 99
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const v2, 0x7f0903c9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialSettings;Lcom/android/phone/RoamingAutoDialSettings$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 67
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getSelectedMode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 68
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, current_plmn:Ljava/lang/String;
    return-void
.end method

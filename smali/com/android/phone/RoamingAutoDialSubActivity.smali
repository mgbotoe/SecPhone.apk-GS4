.class public Lcom/android/phone/RoamingAutoDialSubActivity;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialSubActivity.java"


# instance fields
.field radSubName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "RAD_SUB_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v2, "SKTRADAboutRADActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const v2, 0x7f0903b9

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    :goto_0
    const v2, 0x7f0400b1

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setContentView(I)V

    .line 66
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    return-void

    .line 44
    :cond_1
    const-string v2, "SKTRADDialToKoreaActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const v2, 0x7f0903be

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_2
    const-string v2, "SKTRADDialToAbroadActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    const v2, 0x7f0903bf

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_3
    const-string v2, "SKTRADTRoamingCenterActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    const v2, 0x7f0903b7

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_4
    const-string v2, "SKTRADMOFATInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    const v2, 0x7f0903b8

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_5
    const-string v2, "SKTRADOnOffActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    const v2, 0x7f0903c3

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_6
    const-string v2, "SKTRADLocalTimeInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const v2, 0x7f0903c5

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x1000

    .line 70
    packed-switch p3, :pswitch_data_0

    .line 85
    const-string v1, "RoamingAutoDialSubActivity"

    const-string v2, "ListItemClick position ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    const-string v1, "SKTRADTRoamingCenterActivity"

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "+82263439000"

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "SKTRADMOFATInfoActivity"

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "+82232100404"

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

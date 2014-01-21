.class Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageSelectionAdapter"
.end annotation


# instance fields
.field private final mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p3, components:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 462
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 463
    iput-object p3, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mComponents:Ljava/util/List;

    .line 464
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 478
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 483
    if-nez p2, :cond_0

    .line 484
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x10900d8

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 488
    :cond_0
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->mComponents:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 489
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, packageName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/RespondViaSmsManager;->access$500(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 493
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const v12, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 495
    .local v10, text:Landroid/widget/TextView;
    const v12, 0x1020015

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 499
    .local v11, text2:Landroid/widget/TextView;
    const-string v12, ""

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 503
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 504
    .local v6, label:Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    .line 505
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v12, 0x1020006

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 513
    .local v5, icon:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 515
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/RespondViaSmsManager;->access$500(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 519
    :goto_1
    if-nez v3, :cond_2

    .line 520
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/RespondViaSmsManager;->access$500(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 522
    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 524
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v12, p0, Lcom/android/phone/RespondViaSmsManager$PackageSelectionAdapter;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #calls: Lcom/android/phone/RespondViaSmsManager;->getIconSize()I
    invoke-static {v12}, Lcom/android/phone/RespondViaSmsManager;->access$600(Lcom/android/phone/RespondViaSmsManager;)I

    move-result v12

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    return-object p2

    .line 507
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v7           #lp:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v4

    .line 508
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "RespondViaSmsManager"

    const-string v13, "Failed to load app label because package was not found."

    invoke-static {v12, v13}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #icon:Landroid/widget/ImageView;
    :catch_1
    move-exception v4

    .line 517
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "RespondViaSmsManager"

    const-string v13, "Failed to load icon because it wasn\'t found."

    invoke-static {v12, v13}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

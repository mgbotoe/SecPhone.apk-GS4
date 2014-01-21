.class Lcom/android/phone/RespondViaSmsManager$PackageClickListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageClickListener"
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

.field private mMakeDefault:Z

.field private final mMessage:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "phoneNumber"
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p4, components:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mMakeDefault:Z

    .line 541
    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 542
    iput-object p3, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mMessage:Ljava/lang/String;

    .line 543
    iput-object p4, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mComponents:Ljava/util/List;

    .line 544
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 554
    const-string v0, "RespondViaSmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMakeDefault : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput-boolean p2, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mMakeDefault:Z

    .line 556
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mComponents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 549
    .local v0, component:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v2, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mMessage:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/phone/RespondViaSmsManager$PackageClickListener;->mMakeDefault:Z

    #calls: Lcom/android/phone/RespondViaSmsManager;->sendTextAndExit(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/phone/RespondViaSmsManager;->access$700(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    .line 550
    return-void
.end method

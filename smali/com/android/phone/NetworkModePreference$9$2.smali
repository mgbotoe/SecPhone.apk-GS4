.class Lcom/android/phone/NetworkModePreference$9$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModePreference$9;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference$9;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$9$2;->this$1:Lcom/android/phone/NetworkModePreference$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 765
    const-string v0, "persist.sys.dataprefer.simid"

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$9$2;->this$1:Lcom/android/phone/NetworkModePreference$9;

    iget-object v1, v1, Lcom/android/phone/NetworkModePreference$9;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$9$2;->this$1:Lcom/android/phone/NetworkModePreference$9;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$9;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$9$2;->this$1:Lcom/android/phone/NetworkModePreference$9;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$9;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1900(Lcom/android/phone/NetworkModePreference;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$9$2;->this$1:Lcom/android/phone/NetworkModePreference$9;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$9;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1900(Lcom/android/phone/NetworkModePreference;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    goto :goto_0
.end method

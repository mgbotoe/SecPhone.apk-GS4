.class Lcom/android/phone/CallFeaturesSetting$14;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 3917
    const-string v0, "CallFeaturesSetting"

    const-string v1, "onServiceConnected()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3918
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->access$2802(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3919
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2900(Lcom/android/phone/CallFeaturesSetting;)V

    .line 3921
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 3924
    const-string v0, "CallFeaturesSetting"

    const-string v1, "onServiceDisconnected()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3925
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->access$2802(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3926
    return-void
.end method

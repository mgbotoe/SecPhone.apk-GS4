.class Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaSystemSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaSystemSelectListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 140
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 142
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 151
    :cond_0
    if-eq v2, v1, :cond_1

    .line 152
    move v1, v2

    .line 154
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 167
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    :goto_0
    return-void

    .line 164
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_0
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    .end local v1           #cdmaRoamingMode:I
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

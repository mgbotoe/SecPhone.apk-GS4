.class Lcom/android/phone/callsettings/AutoRejectPreference$1;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 219
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    if-nez p2, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode_for_volte"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I
    invoke-static {v2, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I

    move-result v2

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V

    .line 227
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 228
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I

    move-result v2

    aget-object v1, v1, v2

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 229
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode_for_volte"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

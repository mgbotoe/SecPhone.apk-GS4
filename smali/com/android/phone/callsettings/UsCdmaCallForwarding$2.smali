.class Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;
.super Ljava/lang/Object;
.source "UsCdmaCallForwarding.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/UsCdmaCallForwarding;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/UsCdmaCallForwarding;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    const-string v2, "mDeactivatePreferences clicked"

    #calls: Lcom/android/phone/callsettings/UsCdmaCallForwarding;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v5}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->access$000(Lcom/android/phone/callsettings/UsCdmaCallForwarding;Ljava/lang/String;Z)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "*73"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v1, "origin"

    const-string v2, "us_cdma_call_fowarding_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/phone/callsettings/UsCdmaCallForwarding$2;->this$0:Lcom/android/phone/callsettings/UsCdmaCallForwarding;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/UsCdmaCallForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return v5
.end method

.class Lcom/android/phone/callsettings/AccessorySettings$2;
.super Ljava/lang/Object;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AccessorySettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AccessorySettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AccessorySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 231
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "automatic_answering_enable_sharedpref"

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    #getter for: Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/callsettings/AccessorySettings;->access$100(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    #getter for: Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/callsettings/AccessorySettings;->access$100(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/callsettings/AccessorySettings$2;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    #getter for: Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/phone/callsettings/AccessorySettings;->access$100(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 236
    return-void

    :cond_0
    move v2, v4

    .line 233
    goto :goto_0

    :cond_1
    move v3, v4

    .line 235
    goto :goto_1
.end method
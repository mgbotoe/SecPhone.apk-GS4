.class Lcom/android/phone/callsettings/AnsweringCall$1;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AnsweringCall;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AnsweringCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AnsweringCall;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/phone/callsettings/AnsweringCall$1;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall$1;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    #getter for: Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/callsettings/AnsweringCall;->access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall$1;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    #getter for: Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/callsettings/AnsweringCall;->access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    return-void
.end method

.class Lcom/android/phone/NetworkSetting$12;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->createForUSAGSM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 1928
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1929
    .local v0, index:I
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New index value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1931
    if-ne v0, v4, :cond_1

    .line 1932
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    .line 1937
    :cond_0
    :goto_0
    return v4

    .line 1933
    :cond_1
    if-nez v0, :cond_0

    .line 1934
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    goto :goto_0
.end method

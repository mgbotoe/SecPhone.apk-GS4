.class public Lcom/android/phone/LGTUwaVideoCall;
.super Landroid/app/Activity;
.source "LGTUwaVideoCall.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private PlaceVideoCall(Ljava/lang/String;)V
    .locals 5
    .parameter "Number"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "*88"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/phone/LGTUwaVideoCall;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/LGTUwaVideoCall;->finish()V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTUwaVideoCall;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, sVTNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTUwaVideoCall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "VT_PHONE_NUMBER_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "LGTUwaVideoCall "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cslee sVTNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0, v1}, Lcom/android/phone/LGTUwaVideoCall;->PlaceVideoCall(Ljava/lang/String;)V

    .line 40
    return-void
.end method

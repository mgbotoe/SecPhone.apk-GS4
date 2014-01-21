.class public Lcom/android/phone/CallReminderNotificationHelper;
.super Ljava/lang/Object;
.source "CallReminderNotificationHelper.java"


# static fields
.field private static mInstance:Lcom/android/phone/CallReminderNotificationHelper;

.field private static mNotificationData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    .line 32
    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/CallReminderNotificationHelper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/phone/CallReminderNotificationHelper;

    invoke-direct {v0}, Lcom/android/phone/CallReminderNotificationHelper;-><init>()V

    sput-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mInstance:Lcom/android/phone/CallReminderNotificationHelper;

    return-object v0
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getRemindNotificationData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/android/phone/CallReminderNotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 66
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/CallReminderNotificationHelper;->mNotificationData:Landroid/os/Bundle;

    .line 67
    const v1, 0x10003000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 68
    return-void
.end method

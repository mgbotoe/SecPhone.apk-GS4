.class public Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
.super Ljava/lang/Object;
.source "IMSConferenceCallMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantHolder"
.end annotation


# instance fields
.field public mContact:Landroid/widget/ImageView;

.field public mElapsedTime:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;

.field public mNumber:Landroid/widget/TextView;

.field public mRedial_Button:Landroid/widget/Button;

.field public mStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

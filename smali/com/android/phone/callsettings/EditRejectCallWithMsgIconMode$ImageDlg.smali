.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
.super Landroid/app/Dialog;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDlg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlgGrid:Landroid/widget/GridView;

.field private mPosition:I

.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    .line 336
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    .line 337
    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mContext:Landroid/content/Context;

    .line 338
    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    iput p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    return p1
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mPosition:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 343
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setContentView(I)V

    .line 345
    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    .line 346
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->mDlgGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    return-void
.end method

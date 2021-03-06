.class public Lcom/android/phone/EmergencyContactItem;
.super Landroid/widget/FrameLayout;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyContactItem$9;,
        Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;
    }
.end annotation


# instance fields
.field private final INVALID_ID:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mCheckBox:Landroid/view/View;

.field public mEmergencyCallDialog:Landroid/app/AlertDialog;

.field private mId:I

.field private mImageButton:Landroid/widget/ImageView;

.field private mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field public mParent:Lcom/android/phone/EmergencyContactItemContainer;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 64
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:I

    .line 70
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 64
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:I

    .line 70
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    .line 62
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 64
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:I

    .line 70
    iput v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    return-void
.end method

.method private init(Z)V
    .locals 2
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    .line 174
    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 180
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 181
    return-void
.end method

.method private placeCall()V
    .locals 6

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0

    .line 254
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    const-string v2, "emergency_contact_item"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 261
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .parameter "alertDialog"
    .parameter "editText"

    .prologue
    .line 404
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 405
    .local v0, positiveButton:Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    new-instance v1, Lcom/android/phone/EmergencyContactItem$8;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/phone/EmergencyContactItem$8;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 423
    return-void

    .line 405
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContactItem()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "EmergencyContactItem"

    const-string v1, "updateContactItem : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    .line 191
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateRemoveScreen()V

    .line 194
    :cond_0
    return-void
.end method

.method private updateNormalScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    sget-object v0, Lcom/android/phone/EmergencyContactItem$9;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v1, 0x7f0907fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f02039f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f0203a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f02039e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRemoveScreen()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public addEmergencyContact(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 373
    const-string v2, "EmergencyContactItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEmergencyContact : position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_ICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "emergency_contact_postion"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addEmergencyService()V
    .locals 8

    .prologue
    .line 331
    const-string v4, "EmergencyContactItem"

    const-string v5, "addEmergencyService : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 333
    .local v3, input:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 336
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 338
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/EmergencyContactItem$5;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/phone/EmergencyContactItem$5;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090800

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090021

    new-instance v6, Lcom/android/phone/EmergencyContactItem$7;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/EmergencyContactItem$7;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090024

    new-instance v6, Lcom/android/phone/EmergencyContactItem$6;

    invoke-direct {v6, p0}, Lcom/android/phone/EmergencyContactItem$6;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 367
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 369
    invoke-direct {p0, v1, v3}, Lcom/android/phone/EmergencyContactItem;->setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    .line 370
    return-void
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 427
    .local v0, isChecked:Z
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 99
    const-string v0, "EmergencyContactItem"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    new-instance v1, Lcom/android/phone/EmergencyContactItem$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyContactItem$1;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public removeEmergencyContact(Z)V
    .locals 6
    .parameter "set"

    .prologue
    .line 386
    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 388
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    .line 389
    iget v3, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 391
    if-eqz p1, :cond_0

    .line 392
    :try_start_0
    const-string v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 393
    .local v2, targetUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    .end local v2           #targetUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyContactItem;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 167
    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 168
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    .line 169
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 432
    return-void
.end method

.method public setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "type"
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "photoId"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 118
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    .line 119
    iput p2, p0, Lcom/android/phone/EmergencyContactItem;->mId:I

    .line 120
    iput-object p3, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    .line 123
    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "data15"

    aput-object v5, v4, v1

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setParent(Lcom/android/phone/EmergencyContactItemContainer;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    .line 163
    return-void
.end method

.method public updateContactItem(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    .line 185
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    .line 186
    return-void
.end method

.method public updateEmergencyContact(I)V
    .locals 6
    .parameter "requestCode"

    .prologue
    .line 267
    const-string v2, "EmergencyContactItem"

    const-string v3, "updateEmergencyContact..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v2, Lcom/android/phone/EmergencyContactItem$9;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ScreenType:[I

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const-string v2, "safety_assurance_call_popup"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090501

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    const v2, 0x7f090021

    new-instance v3, Lcom/android/phone/EmergencyContactItem$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$2;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    const v2, 0x7f090024

    new-instance v3, Lcom/android/phone/EmergencyContactItem$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$3;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    new-instance v2, Lcom/android/phone/EmergencyContactItem$4;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyContactItem$4;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    .line 308
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const v3, 0x7f090500

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 309
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 310
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 312
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->addEmergencyService()V

    goto/16 :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyContactItem;->addEmergencyContact(I)V

    goto/16 :goto_0

    .line 323
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->toggle()V

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

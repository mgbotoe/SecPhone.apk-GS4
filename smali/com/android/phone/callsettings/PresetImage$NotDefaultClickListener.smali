.class Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PresetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotDefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v6, 0x7f090850

    const/4 v5, 0x2

    .line 297
    const-string v4, "rearrange_preset_image_setting"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    if-le p2, v5, :cond_0

    const/4 p2, 0x2

    .line 301
    :cond_0
    if-nez p2, :cond_1

    .line 303
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 304
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-boolean v5, v5, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 305
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-boolean v5, v5, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 306
    const-string v4, "PresetImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clickable attr. for the Default image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_path"

    const-string v6, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_name"

    iget-object v6, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v7, 0x7f09028f

    invoke-virtual {v6, v7}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f0202a7

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 347
    :goto_0
    return-void

    .line 314
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 318
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x32

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    .line 321
    const-string v4, "PresetImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    if-ne p2, v5, :cond_3

    .line 325
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 326
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x34

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 327
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 329
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 331
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x33

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 332
    :catch_1
    move-exception v0

    .line 333
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    .line 334
    const-string v4, "PresetImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$800(Lcom/android/phone/callsettings/PresetImage;)J

    move-result-wide v2

    .line 340
    .local v2, sizeLimit:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 341
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v4, v2, v3}, Lcom/android/phone/callsettings/PresetImage;->access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;

    move-result-object v1

    .line 342
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x35

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 344
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v6, 0x7f09028b

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.class Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;
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
    name = "DefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v6, 0x7f090850

    const/4 v5, 0x1

    .line 354
    const-string v4, "rearrange_preset_image_setting"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    if-le p2, v5, :cond_0

    const/4 p2, 0x1

    .line 358
    :cond_0
    if-nez p2, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 362
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x32

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 363
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    .line 365
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

    .line 367
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    if-ne p2, v5, :cond_2

    .line 369
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 370
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x34

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 371
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    .line 373
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;

    move-result-object v1

    .line 375
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x33

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 376
    :catch_1
    move-exception v0

    .line 377
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    .line 378
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

    .line 382
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J
    invoke-static {v4}, Lcom/android/phone/callsettings/PresetImage;->access$800(Lcom/android/phone/callsettings/PresetImage;)J

    move-result-wide v2

    .line 384
    .local v2, sizeLimit:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 385
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #calls: Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v4, v2, v3}, Lcom/android/phone/callsettings/PresetImage;->access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;

    move-result-object v1

    .line 386
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v5, 0x35

    invoke-virtual {v4, v1, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 388
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v6, 0x7f09028b

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

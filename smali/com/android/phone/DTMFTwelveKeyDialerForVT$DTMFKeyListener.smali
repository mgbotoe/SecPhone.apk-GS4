.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 210
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 393
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 211
    return-void

    .line 393
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    return-void
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 4
    .parameter "event"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 372
    .local v1, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 374
    .local v2, number:I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 376
    .local v0, match:I
    if-eqz v0, :cond_1

    move v2, v0

    .line 379
    .end local v0           #match:I
    :cond_1
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 308
    .local v0, c:C
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener reading \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V
    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V

    .line 320
    const/4 v1, 0x1

    .line 325
    :goto_0
    return v1

    .line 321
    :cond_2
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener rejecting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 325
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    int-to-char v0, v3

    .line 256
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 263
    .local v1, keyOK:Z
    if-eqz v1, :cond_2

    .line 264
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMFKeyListener reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from input."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #setter for: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z
    invoke-static {v3, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$202(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Z)Z

    .line 267
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V
    invoke-static {v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V

    .line 273
    .end local v1           #keyOK:Z
    :cond_1
    :goto_0
    return v2

    .line 268
    .restart local v1       #keyOK:Z
    :cond_2
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMFKeyListener rejecting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from input."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v1           #keyOK:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 288
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 290
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 292
    .local v1, keyOK:Z
    if-eqz v1, :cond_1

    .line 293
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$400(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 296
    const/4 v2, 0x1

    .line 299
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

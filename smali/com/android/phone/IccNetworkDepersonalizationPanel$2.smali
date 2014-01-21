.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const-wide/16 v5, 0xbb8

    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 113
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 114
    .local v1, res:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 116
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    .line 117
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 147
    :try_start_0
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 148
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    .end local v1           #res:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v1       #res:Landroid/os/AsyncResult;
    :cond_1
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    .line 241
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 242
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$8;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$8;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 248
    .end local v1           #res:Landroid/os/AsyncResult;
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 249
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 250
    .restart local v1       #res:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 252
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    .line 253
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 258
    :try_start_1
    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100()I

    move-result v2

    if-ge v2, v4, :cond_4

    .line 259
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$9;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/lang/NullPointerException;
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$11;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4
    :try_start_2
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$10;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 299
    :cond_5
    invoke-static {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$102(I)I

    .line 300
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 301
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;

    invoke-direct {v2, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$13;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

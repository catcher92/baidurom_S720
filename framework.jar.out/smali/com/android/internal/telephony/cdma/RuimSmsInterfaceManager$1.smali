.class Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "RuimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 76
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    :goto_1
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v4, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 81
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 80
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 85
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 87
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 88
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v5, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 94
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 90
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v4, "Cannot load Sms records"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 100
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 103
    :try_start_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v2

    if-nez v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    new-instance v4, Landroid/telephony/SmsMemoryStatus;

    invoke-direct {v4}, Landroid/telephony/SmsMemoryStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Landroid/telephony/SmsMemoryStatus;)Landroid/telephony/SmsMemoryStatus;

    .line 110
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SmsMemoryStatus;

    .line 111
    .local v1, tmpStatus:Landroid/telephony/SmsMemoryStatus;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v2

    iget v4, v1, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    iput v4, v2, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v2

    iget v4, v1, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    iput v4, v2, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 117
    .end local v1           #tmpStatus:Landroid/telephony/SmsMemoryStatus;
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 115
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v4, "Cannot Get Sms SIM Memory Status from RUIM"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekThread"
.end annotation


# instance fields
.field public currentStation:I

.field public seekDirection:Z

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3065
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3066
    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->currentStation:I

    .line 3067
    iput-boolean p3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    .line 3068
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x438

    const/16 v4, 0x36b

    const/high16 v3, 0x4120

    .line 3070
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 3072
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->currentStation:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9800(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 3073
    mul-float v0, v1, v3

    float-to-int v0, v0

    .line 3075
    if-ge v0, v5, :cond_0

    if-gt v0, v4, :cond_1

    .line 3077
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    if-nez v0, :cond_3

    .line 3078
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/high16 v1, 0x42d8

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9800(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 3079
    mul-float v0, v1, v3

    float-to-int v0, v0

    .line 3087
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v3, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 3088
    if-ge v0, v5, :cond_2

    if-gt v0, v4, :cond_4

    .line 3090
    :cond_2
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not search previous station."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3092
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 3093
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3094
    const-string v2, "MSGID"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3095
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3109
    :goto_1
    return-void

    .line 3082
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/high16 v1, 0x42af

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9800(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 3083
    mul-float v0, v1, v3

    float-to-int v0, v0

    goto :goto_0

    .line 3099
    :cond_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 3100
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 3101
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3102
    const-string v4, "MSGID"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3103
    const-string v4, "SEEK_STATION"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3104
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3105
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3106
    const-string v0, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send message to tune to recently seeked station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class Lcom/mediatek/FMRadio/FMRadioService$5;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x438

    const/16 v5, 0x36b

    .line 1738
    const-string v0, "FMRadioService"

    const-string v1, ">>> RDS Thread run()"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :goto_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v0

    .line 1741
    if-eqz v0, :cond_0

    .line 1742
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioNative.readrds events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$4500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1855
    const-string v0, "FMRadioService"

    const-string v1, "<<< RDS Thread run()"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void

    .line 1748
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_2

    .line 1750
    const-string v1, "FMRadioService"

    const-string v2, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getPS()[B

    move-result-object v1

    .line 1752
    if-eqz v1, :cond_7

    .line 1753
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1758
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x40

    and-int/lit8 v2, v0, 0x40

    if-ne v1, v2, :cond_3

    .line 1760
    const-string v1, "FMRadioService"

    const-string v2, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getLRText()[B

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_8

    .line 1763
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1768
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x80

    and-int/lit16 v2, v0, 0x80

    if-ne v1, v2, :cond_4

    .line 1769
    const-string v1, "FMRadioService"

    const-string v2, "RDS_EVENT_AF"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v1

    .line 1771
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    if-lt v1, v5, :cond_a

    if-gt v1, v6, :cond_a

    .line 1776
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    if-eq v2, v1, :cond_9

    .line 1777
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1778
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1780
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1781
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1784
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1785
    const-string v2, "EXTRA_RDS_AF_ACTIVED"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1786
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1794
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x400

    and-int/lit16 v2, v0, 0x400

    if-ne v1, v2, :cond_5

    .line 1795
    const-string v1, "FMRadioService"

    const-string v2, "RDS_EVENT_TAON"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeTA()S

    move-result v1

    .line 1797
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    if-lt v1, v5, :cond_c

    if-gt v1, v6, :cond_c

    .line 1802
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    if-eq v2, v1, :cond_b

    .line 1803
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1804
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v3, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1806
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1807
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1810
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1811
    const-string v2, "EXTRA_RDS_TA_ACTIVED"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1820
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    and-int/lit16 v0, v0, 0x800

    if-ne v1, v0, :cond_6

    .line 1821
    const-string v0, "FMRadioService"

    const-string v1, "RDS_EVENT_TAON_OFF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->deactiveTA()S

    move-result v0

    .line 1823
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    if-lt v0, v5, :cond_e

    if-gt v0, v6, :cond_e

    .line 1828
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v1

    if-eq v1, v0, :cond_d

    .line 1829
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1830
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1832
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1833
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    const-string v1, "EXTRA_RDS_TA_DEACTIVED"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1838
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$5;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1850
    :cond_6
    :goto_5
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1851
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1755
    :cond_7
    const-string v1, "FMRadioService"

    const-string v2, "Error: No program name."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1765
    :cond_8
    const-string v1, "FMRadioService"

    const-string v2, "Error: No LRText."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1788
    :cond_9
    const-string v1, "FMRadioService"

    const-string v2, "Error: the new frequency is the same as current."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1791
    :cond_a
    const-string v1, "FMRadioService"

    const-string v2, "Error: invalid alternative frequency"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1814
    :cond_b
    const-string v1, "FMRadioService"

    const-string v2, "Error: the new frequency is the same as current."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1817
    :cond_c
    const-string v1, "FMRadioService"

    const-string v2, "Error: invalid activeTA frequency"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1840
    :cond_d
    const-string v0, "FMRadioService"

    const-string v1, "Error: the new frequency is the same as current."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1843
    :cond_e
    const-string v0, "FMRadioService"

    const-string v1, "Error: invalid deactiveTA frequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

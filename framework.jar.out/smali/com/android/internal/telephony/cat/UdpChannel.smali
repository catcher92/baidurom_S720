.class Lcom/android/internal/telephony/cat/UdpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 1
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    .line 491
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 492
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, ret:I
    const-string v1, "[BIP]"

    const-string v2, "closeChannel enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "[BIP]"

    const-string v2, "closeSocket enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 532
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 534
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 535
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 536
    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 539
    :cond_0
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 634
    .local v0, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 5
    .parameter "cmdMsg"

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, ret:I
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UDP link mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 501
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 502
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 503
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 505
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UdpChannel: sock status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v1

    .line 511
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 512
    const-string v2, "[BIP]"

    const-string v3, "UdpChannel-openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iput v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 515
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 516
    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 519
    :cond_1
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 15
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    .line 639
    const-string v11, "[BIP]"

    const-string/jumbo v12, "new receiveData method"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v9, 0x0

    .line 642
    .local v9, ret:I
    if-nez p2, :cond_0

    .line 643
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rdr is null"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v11, 0x5

    .line 732
    :goto_0
    return v11

    .line 647
    :cond_0
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receiveData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    move/from16 v0, p1

    new-array v11, v0, [B

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 650
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v0, p1

    if-lt v11, v0, :cond_2

    .line 651
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rx buffer has enough data"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v11, v12, v13, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int v11, v11, p1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 655
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v11, v11, p1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 656
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v11, v9

    .line 732
    goto :goto_0

    .line 657
    :catch_0
    move-exception v3

    .line 658
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 1"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v11, 0x5

    goto :goto_0

    .line 662
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rx buffer is insufficient"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move/from16 v7, p1

    .line 664
    .local v7, needCopy:I
    iget v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 665
    .local v1, canCopy:I
    const/4 v6, 0x0

    .line 666
    .local v6, hasCopied:I
    const/4 v2, 0x0

    .line 668
    .local v2, canExit:Z
    :goto_2
    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    .line 669
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasCopied/needCopy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    if-le v7, v1, :cond_3

    .line 671
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canCopy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v11, v12, v13, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    add-int/2addr v6, v1

    .line 675
    sub-int/2addr v7, v1

    .line 676
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 677
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_3
    if-gtz v7, :cond_4

    .line 697
    const-string v11, "[BIP]"

    const-string v12, "can exit the loop"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 699
    const/4 v2, 0x1

    goto :goto_2

    .line 678
    :catch_1
    move-exception v3

    .line 679
    .restart local v3       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 2"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v11, 0x5

    goto/16 :goto_0

    .line 683
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v11, "[BIP]"

    const-string v12, "copy will complete"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v11, v12, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    add-int/2addr v6, v1

    .line 687
    const/4 v7, 0x0

    .line 688
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 689
    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 690
    :catch_2
    move-exception v3

    .line 691
    .restart local v3       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 3"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v11, 0x5

    goto/16 :goto_0

    .line 702
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v12, 0xbb8

    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 703
    new-instance v8, Ljava/net/DatagramPacket;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v12, v12

    invoke-direct {v8, v11, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 704
    .local v8, p:Ljava/net/DatagramPacket;
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 705
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 706
    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    iput v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_2

    .line 707
    .end local v8           #p:Ljava/net/DatagramPacket;
    :catch_3
    move-exception v3

    .line 708
    .local v3, e:Ljava/io/InterruptedIOException;
    const-string v11, "[BIP]"

    const-string/jumbo v12, "receive timeout"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 710
    new-array v10, v6, [B

    .line 712
    .local v10, temp:[B
    :try_start_4
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "just copy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v10, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 720
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 721
    const/16 v9, 0x9

    .line 722
    goto/16 :goto_1

    .line 714
    :catch_4
    move-exception v4

    .line 715
    .local v4, e2:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail to process hasCopied data"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 717
    const/4 v9, 0x5

    .line 718
    goto/16 :goto_1

    .line 723
    .end local v3           #e:Ljava/io/InterruptedIOException;
    .end local v4           #e2:Ljava/lang/IndexOutOfBoundsException;
    .end local v10           #temp:[B
    :catch_5
    move-exception v5

    .line 724
    .local v5, ex:Ljava/lang/Exception;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 725
    const/4 v9, 0x5

    .line 726
    goto/16 :goto_1
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 11
    .parameter "requestCount"

    .prologue
    .line 543
    new-instance v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 544
    .local v6, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 546
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 550
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 552
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 553
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 596
    :cond_0
    :goto_0
    return-object v6

    .line 556
    :cond_1
    move v4, p1

    .line 557
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 558
    .local v0, canCopy:I
    const/4 v2, 0x0

    .line 559
    .local v2, countCopied:I
    const/4 v1, 0x0

    .line 561
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 562
    if-le v4, v0, :cond_2

    .line 564
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    add-int/2addr v2, v0

    .line 566
    sub-int/2addr v4, v0

    .line 567
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 568
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 580
    :goto_2
    if-nez v4, :cond_3

    .line 581
    const/4 v1, 0x1

    goto :goto_1

    .line 572
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 574
    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    add-int/2addr v2, v4

    .line 576
    const/4 v4, 0x0

    goto :goto_2

    .line 584
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 585
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 586
    .local v5, packet:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 587
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 588
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 589
    .end local v5           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 590
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 569
    :catch_2
    move-exception v7

    goto :goto_2

    .line 554
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v2           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 9
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, ret:I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v8, v1, v3

    .line 603
    .local v8, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    array-length v1, p1

    if-lt v8, v1, :cond_1

    .line 608
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 616
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send UDP data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 619
    .local v0, packet:Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 621
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 622
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 629
    .end local v0           #packet:Ljava/net/DatagramPacket;
    :cond_0
    :goto_1
    return v7

    .line 612
    :cond_1
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    .restart local v0       #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v6

    .line 624
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 610
    .end local v0           #packet:Ljava/net/DatagramPacket;
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.class Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;
.super Landroid/os/Handler;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProfileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3002
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3003
    .local v1, name:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3004
    .local v2, valueInt:I
    const/4 v3, 0x0

    .line 3005
    .local v3, valueSting:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3006
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3007
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3009
    :cond_0
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 3149
    const-string v5, "AudioProfileService"

    const-string v6, "Unsupport handle message!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :goto_0
    return-void

    .line 3012
    :sswitch_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v7, v6, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 3017
    :sswitch_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v6

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v6, v4, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 3022
    :sswitch_2
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x8

    if-nez v3, :cond_3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_3

    .line 3027
    :sswitch_3
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3031
    :sswitch_4
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3035
    :sswitch_5
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3039
    :sswitch_6
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3044
    :sswitch_7
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3048
    :sswitch_8
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3052
    :sswitch_9
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3056
    :sswitch_a
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3060
    :sswitch_b
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3064
    :sswitch_c
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3068
    :sswitch_d
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3072
    :sswitch_e
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3076
    :sswitch_f
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3080
    :sswitch_10
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3084
    :sswitch_11
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3088
    :sswitch_12
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3092
    :sswitch_13
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z
    invoke-static {v5, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1802(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 3093
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v5, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v5, :cond_4

    move v4, v6

    .line 3097
    .local v4, vibrationStatus:I
    :cond_4
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v10, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3099
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3101
    const-string v5, "AudioProfileService"

    const-string v6, "CTS test finish, set vibrate again to make function normal!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3106
    .end local v4           #vibrationStatus:I
    :sswitch_14
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3110
    :sswitch_15
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3114
    :sswitch_16
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3118
    :sswitch_17
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3122
    :sswitch_18
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3126
    :sswitch_19
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x10

    if-nez v3, :cond_5

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_4

    .line 3132
    :sswitch_1a
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3136
    :sswitch_1b
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3140
    :sswitch_1c
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3144
    :sswitch_1d
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3010
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x65 -> :sswitch_14
        0x66 -> :sswitch_15
        0x67 -> :sswitch_16
        0x68 -> :sswitch_17
        0x69 -> :sswitch_18
        0x6f -> :sswitch_19
        0x70 -> :sswitch_1a
        0x71 -> :sswitch_1b
        0x72 -> :sswitch_1c
        0x73 -> :sswitch_1d
    .end sparse-switch
.end method

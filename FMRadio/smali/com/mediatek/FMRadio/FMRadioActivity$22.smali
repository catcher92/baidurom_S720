.class final Lcom/mediatek/FMRadio/FMRadioActivity$22;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2431
    packed-switch p2, :pswitch_data_0

    .line 2471
    :goto_0
    return-void

    .line 2435
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2441
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2447
    :pswitch_2
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2453
    :pswitch_3
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2459
    :pswitch_4
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2464
    :pswitch_5
    const/16 v0, 0x78

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9602(I)I

    goto :goto_0

    .line 2431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

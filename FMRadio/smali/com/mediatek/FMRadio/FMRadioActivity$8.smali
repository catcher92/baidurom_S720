.class Lcom/mediatek/FMRadio/FMRadioActivity$8;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Lcom/mediatek/FMRadio/HorizontalNumberPicker$OnScrollFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollFinish(I)V
    .locals 2
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v0

    add-int/lit16 v1, p1, 0x36b

    if-eq v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    add-int/lit16 v1, p1, 0x36b

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 904
    :cond_0
    return-void
.end method

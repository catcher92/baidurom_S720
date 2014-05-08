.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->optionsUnSelAll()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$2;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->cancelDeleteMode()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$300(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    .line 305
    return-void
.end method

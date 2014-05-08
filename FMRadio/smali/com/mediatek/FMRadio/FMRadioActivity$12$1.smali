.class Lcom/mediatek/FMRadio/FMRadioActivity$12$1;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioActivity$12;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreqSet(I)V
    .locals 2
    .parameter

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$12$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$12;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V
    invoke-static {v0, v1, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V

    .line 1284
    return-void
.end method

.class Lcom/mediatek/FMRadio/FMRadioEMActivity$1;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060025

    if-ne v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060028

    if-ne v0, v1, :cond_3

    .line 307
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v1, "Set Stereo Mono failed."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    :cond_1
    :goto_1
    return-void

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060026

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060029

    if-ne v0, v1, :cond_4

    .line 315
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v1, "Set Stereo Mono failed."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060023

    if-ne v0, v1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    float-to-int v0, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 330
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v1, "bad float format."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

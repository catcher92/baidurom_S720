.class Lcom/mediatek/FMRadio/FMRecorderDialog$1;
.super Ljava/lang/Object;
.source "FMRecorderDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRecorderDialog;->setTextChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #setter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$002(Lcom/mediatek/FMRadio/FMRecorderDialog;Z)Z

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*[/\\\\:*?\"<>|].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #getter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #getter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

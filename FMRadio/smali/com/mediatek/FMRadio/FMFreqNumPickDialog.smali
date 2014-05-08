.class public Lcom/mediatek/FMRadio/FMFreqNumPickDialog;
.super Landroid/app/Dialog;
.source "FMFreqNumPickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMFreqNumPickDialog"


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mEtFreqBackPart:Landroid/widget/EditText;

.field private mEtFreqForwardPart:Landroid/widget/EditText;

.field private mListener:Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mTvDlgTitle:Landroid/widget/TextView;

.field private miCurrentFreq:I

.field private miHighPart:I

.field private miLowPart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 37
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mListener:Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;

    .line 38
    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    .line 39
    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miHighPart:I

    .line 40
    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miLowPart:I

    .line 60
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->requestWindowFeature(I)Z

    .line 63
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->showFreqDialog()V

    .line 64
    return-void
.end method

.method private showFreqDialog()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 70
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->setContentView(I)V

    .line 72
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mButtonOk:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mButtonCancel:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 82
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqBackPart:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqBackPart:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 84
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mTvDlgTitle:Landroid/widget/TextView;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    .line 88
    iget v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mTvDlgTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mTvDlgTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    div-int/lit8 v0, v0, 0x64

    .line 93
    iget v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    .line 94
    iget v2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miCurrentFreq:I

    rem-int/lit8 v2, v2, 0xa

    .line 95
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miHighPart:I

    .line 96
    iput v2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miLowPart:I

    .line 97
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miHighPart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 101
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqBackPart:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqBackPart:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miLowPart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 118
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqForwardPart:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miHighPart:I

    .line 119
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mEtFreqBackPart:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miLowPart:I

    .line 120
    iget v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miHighPart:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->miLowPart:I

    add-int/2addr v0, v1

    .line 121
    const/16 v1, 0x36b

    if-lt v0, v1, :cond_0

    const/16 v1, 0x438

    if-le v0, v1, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f040065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mListener:Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mListener:Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;

    invoke-interface {v1, v0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;->onFreqSet(I)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->dismiss()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x7f06001a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnFreqSetListener(Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMFreqNumPickDialog;->mListener:Lcom/mediatek/FMRadio/FMFreqNumPickDialog$OnFreqSetListener;

    .line 48
    return-void
.end method

.class public Lcom/mediatek/FMRadio/FMRecorderDialog;
.super Landroid/app/Dialog;
.source "FMRecorderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ROCORDING_FILENAME_MAX_SIZE:I = 0x32

.field private static final ROCORDING_FILENAME_SUFFIX_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FMRecorderDialog"


# instance fields
.field private mButtonDiscard:Landroid/widget/Button;

.field private mButtonSave:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRecordingName:Ljava/lang/String;

.field private mIsNeedCheckFilenameExist:Z

.field private mRecordingNameEditText:Landroid/widget/EditText;

.field private mSDDirectory:Ljava/lang/String;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 36
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    .line 50
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->requestWindowFeature(I)Z

    .line 54
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->showRenameDialog()V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRecorderDialog;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private setEditTextFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorderDialog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRecorderDialog$2;-><init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V

    .line 165
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 166
    return-void
.end method

.method private setTextChangedCallback()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/mediatek/FMRadio/FMRecorderDialog$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRecorderDialog$1;-><init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method

.method private showRenameDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 91
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->setContentView(I)V

    .line 93
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonDiscard:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonDiscard:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 116
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 117
    const-string v0, "FMRecorderDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedialog: focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->setTextChangedCallback()V

    .line 119
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "FMRecorderDialog"

    const-string v2, "Exception while getRecordingName: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 169
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    const-string v3, "Audio"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 183
    const-string v0, "FMRecorderDialog"

    const-string v1, "Error:recording file is not exist!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    .line 188
    const-string v1, "FMRecorderDialog"

    const-string v3, "New name is the same as default name,so need not check whether exist!"

    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    const-string v1, "FMRecorderDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is the recording file name need to check whether exist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    if-eqz v1, :cond_2

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "FMRecorderDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".3gpp is already exists!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 203
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, v0}, Lcom/mediatek/FMRadio/IFMRadioService;->saveRecording(Ljava/lang/String;)V

    .line 204
    const-string v0, "FMRecorderDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FM recording file is saved in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->dismiss()V

    goto/16 :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "FMRecorderDialog"

    const-string v2, "Exception while saveRecording file: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/FMRadio/IFMRadioService;->saveRecording(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->dismiss()V

    .line 222
    const-string v0, "FMRecorderDialog"

    const-string v1, "Discard FM recording file. "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    const-string v1, "FMRecorderDialog"

    const-string v2, "Exception while saveRecording file: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 171
    :pswitch_data_0
    .packed-switch 0x7f06001f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "HorizontalNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2102
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2118
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2119
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2121
    if-nez v0, :cond_0

    .line 2122
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p4, p6, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2128
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2159
    :cond_1
    :goto_0
    return-object v0

    .line 2131
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #calls: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$500(Lcom/mediatek/FMRadio/HorizontalNumberPicker;Ljava/lang/String;)I

    move-result v1

    .line 2138
    iget-object v2, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mMaxValue:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$600(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 2139
    const-string v0, ""

    goto :goto_0

    .line 2144
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2147
    const-string v0, ""

    goto :goto_0

    .line 2149
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p4, p6, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2151
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2152
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$400(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_6

    aget-object v1, v4, v0

    .line 2153
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2154
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2155
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$InputTextFilter;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    #calls: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v0, v2, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$700(Lcom/mediatek/FMRadio/HorizontalNumberPicker;II)V

    .line 2156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, p5, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2152
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2159
    :cond_6
    const-string v0, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2112
    invoke-static {}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$300()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x1

    return v0
.end method

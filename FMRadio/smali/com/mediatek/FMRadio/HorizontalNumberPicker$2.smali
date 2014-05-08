.class synthetic Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;
.super Ljava/lang/Object;
.source "HorizontalNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 761
    invoke-static {}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->values()[Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;->$SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I

    :try_start_0
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;->$SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_SMALL:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;->$SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$2;->$SwitchMap$com$mediatek$FMRadio$HorizontalNumberPicker$Scale:[I

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_LARGE:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

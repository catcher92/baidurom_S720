.class public final enum Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;
.super Ljava/lang/Enum;
.source "HorizontalNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

.field public static final enum SCALE_LARGE:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

.field public static final enum SCALE_MEDIUM:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

.field public static final enum SCALE_SMALL:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    const-string v1, "SCALE_SMALL"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_SMALL:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    .line 363
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    const-string v1, "SCALE_MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    .line 364
    new-instance v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    const-string v1, "SCALE_LARGE"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_LARGE:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    .line 361
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_SMALL:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_MEDIUM:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->SCALE_LARGE:Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->$VALUES:[Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;
    .locals 1
    .parameter

    .prologue
    .line 361
    const-class v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->$VALUES:[Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    invoke-virtual {v0}, [Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/FMRadio/HorizontalNumberPicker$Scale;

    return-object v0
.end method

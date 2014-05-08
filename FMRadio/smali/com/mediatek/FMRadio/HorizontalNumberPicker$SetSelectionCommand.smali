.class Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "HorizontalNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/HorizontalNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2167
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2167
    iput p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 2174
    return-void
.end method

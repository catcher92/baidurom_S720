.class Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2215
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2216
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1500(Lcom/mediatek/FMRadio/HorizontalNumberPicker;Z)V

    .line 2220
    iget-object v0, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    iget-object v1, p0, Lcom/mediatek/FMRadio/HorizontalNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/mediatek/FMRadio/HorizontalNumberPicker;

    #getter for: Lcom/mediatek/FMRadio/HorizontalNumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->access$1600(Lcom/mediatek/FMRadio/HorizontalNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/FMRadio/HorizontalNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2221
    return-void
.end method

.class public Lcom/lenovo/widget/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/lenovo/widget/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/widget/WheelAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/widget/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    .line 48
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    .line 39
    iput p2, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->length:I

    .line 40
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/lenovo/widget/ArrayWheelAdapter;->length:I

    return v0
.end method

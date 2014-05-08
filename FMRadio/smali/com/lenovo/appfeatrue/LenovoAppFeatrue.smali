.class public Lcom/lenovo/appfeatrue/LenovoAppFeatrue;
.super Ljava/lang/Object;
.source "LenovoAppFeatrue.java"


# static fields
.field public static mProject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-string v0, "p700"

    sput-object v0, Lcom/lenovo/appfeatrue/LenovoAppFeatrue;->mProject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

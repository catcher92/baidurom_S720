.class public Landroid/content/res/Resources$DialogRes;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogRes"
.end annotation


# instance fields
.field public bottom:Landroid/graphics/drawable/Drawable;

.field public bottomMedium:Landroid/graphics/drawable/Drawable;

.field public center:Landroid/graphics/drawable/Drawable;

.field public full:Landroid/graphics/drawable/Drawable;

.field public preview:Landroid/graphics/drawable/Drawable;

.field public resid:I

.field final synthetic this$0:Landroid/content/res/Resources;

.field public top:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3327
    iput-object p1, p0, Landroid/content/res/Resources$DialogRes;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3328
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->top:Landroid/graphics/drawable/Drawable;

    .line 3329
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->center:Landroid/graphics/drawable/Drawable;

    .line 3330
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->bottom:Landroid/graphics/drawable/Drawable;

    .line 3331
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->full:Landroid/graphics/drawable/Drawable;

    .line 3332
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->bottomMedium:Landroid/graphics/drawable/Drawable;

    .line 3333
    iput-object v0, p0, Landroid/content/res/Resources$DialogRes;->preview:Landroid/graphics/drawable/Drawable;

    .line 3334
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$DialogRes;->resid:I

    return-void
.end method

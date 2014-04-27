.class Lcom/android/internal/widget/multiwaveview/Tweener;
.super Ljava/lang/Object;
.source "Tweener.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Tweener"

.field private static mCleanupListener:Landroid/animation/Animator$AnimatorListener;

.field private static sTweens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    .line 158
    new-instance v0, Lcom/android/internal/widget/multiwaveview/Tweener$1;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/Tweener$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/multiwaveview/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/internal/widget/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V

    return-void
.end method

.method private static remove(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 47
    sget-object v2, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/widget/multiwaveview/Tweener;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/widget/multiwaveview/Tweener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v2, v2, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    if-ne v2, p0, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 57
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/widget/multiwaveview/Tweener;>;"
    :cond_1
    return-void
.end method

.method private static varargs replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 183
    .local v2, killobject:Ljava/lang/Object;
    sget-object v5, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 184
    .local v4, tween:Lcom/android/internal/widget/multiwaveview/Tweener;
    if-eqz v4, :cond_0

    .line 185
    iget-object v5, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    if-eqz p0, :cond_1

    .line 187
    iget-object v6, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 182
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    sget-object v5, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    .end local v2           #killobject:Ljava/lang/Object;
    .end local v4           #tween:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_2
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    return-void
.end method

.method public static varargs to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;
    .locals 20
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .local v3, delay:J
    const/4 v14, 0x0

    .line 62
    .local v14, updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v9, 0x0

    .line 63
    .local v9, listener:Landroid/animation/Animator$AnimatorListener;
    const/4 v7, 0x0

    .line 65
    .local v7, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v11, 0x0

    .line 66
    .local v11, repeat:I
    const/4 v12, 0x1

    .line 70
    .local v12, repeatMode:I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v10, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_d

    .line 72
    aget-object v16, p3, v6

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 73
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Key must be a string: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, p3, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 75
    :cond_0
    aget-object v8, p3, v6

    check-cast v8, Ljava/lang/String;

    .line 76
    .local v8, key:Ljava/lang/String;
    add-int/lit8 v16, v6, 0x1

    aget-object v15, p3, v16

    .line 77
    .local v15, value:Ljava/lang/Object;
    const-string/jumbo v16, "simultaneousTween"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 71
    .end local v15           #value:Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 79
    .restart local v15       #value:Ljava/lang/Object;
    :cond_2
    const-string v16, "ease"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v7, v15

    .line 80
    check-cast v7, Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 81
    :cond_3
    const-string/jumbo v16, "onUpdate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string/jumbo v16, "onUpdateListener"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_4
    move-object v14, v15

    .line 82
    check-cast v14, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_1

    .line 83
    :cond_5
    const-string/jumbo v16, "onComplete"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string/jumbo v16, "onCompleteListener"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    move-object v9, v15

    .line 84
    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    goto :goto_1

    .line 85
    :cond_7
    const-string v16, "delay"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 86
    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 87
    .restart local v15       #value:Ljava/lang/Object;
    :cond_8
    const-string/jumbo v16, "syncWith"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 91
    const-string/jumbo v16, "repeatmode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 92
    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto :goto_1

    .line 93
    .restart local v15       #value:Ljava/lang/Object;
    :cond_9
    const-string/jumbo v16, "repeat"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 94
    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto/16 :goto_1

    .line 97
    .restart local v15       #value:Ljava/lang/Object;
    :cond_a
    instance-of v0, v15, [F

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 98
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v16, v15

    check-cast v16, [F

    check-cast v16, [F

    const/16 v19, 0x0

    aget v16, v16, v19

    aput v16, v17, v18

    const/16 v16, 0x1

    check-cast v15, [F

    .end local v15           #value:Ljava/lang/Object;
    check-cast v15, [F

    const/16 v18, 0x1

    aget v18, v15, v18

    aput v18, v17, v16

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 100
    .restart local v15       #value:Ljava/lang/Object;
    :cond_b
    instance-of v0, v15, Ljava/lang/Number;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 101
    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 102
    .local v5, floatValue:F
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v5, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 104
    .end local v5           #floatValue:F
    .restart local v15       #value:Ljava/lang/Object;
    :cond_c
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad argument for key \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" with value "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 110
    .end local v8           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/Object;
    :cond_d
    sget-object v16, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 111
    .local v13, tween:Lcom/android/internal/widget/multiwaveview/Tweener;
    const/4 v2, 0x0

    .line 112
    .local v2, anim:Landroid/animation/ObjectAnimator;
    if-nez v13, :cond_12

    .line 113
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 115
    new-instance v13, Lcom/android/internal/widget/multiwaveview/Tweener;

    .end local v13           #tween:Lcom/android/internal/widget/multiwaveview/Tweener;
    invoke-direct {v13, v2}, Lcom/android/internal/widget/multiwaveview/Tweener;-><init>(Landroid/animation/ObjectAnimator;)V

    .line 116
    .restart local v13       #tween:Lcom/android/internal/widget/multiwaveview/Tweener;
    sget-object v16, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_2
    if-eqz v7, :cond_e

    .line 124
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    :cond_e
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 129
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    if-lez v11, :cond_f

    .line 132
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 133
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 136
    :cond_f
    if-eqz v14, :cond_10

    .line 137
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 138
    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    :cond_10
    if-eqz v9, :cond_11

    .line 141
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 142
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    :cond_11
    sget-object v16, Lcom/android/internal/widget/multiwaveview/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 147
    return-object v13

    .line 119
    :cond_12
    sget-object v16, Lcom/android/internal/widget/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/multiwaveview/Tweener;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 120
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/internal/widget/multiwaveview/Tweener;->replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method varargs from(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;
    .locals 1
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    .line 154
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v0

    return-object v0
.end method

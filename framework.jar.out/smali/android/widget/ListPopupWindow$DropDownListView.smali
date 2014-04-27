.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownListView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPopupWindow.DropDownListView"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/ListPopupWindow;Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "hijackFocus"

    .prologue
    .line 1197
    iput-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->this$0:Landroid/widget/ListPopupWindow;

    .line 1198
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1199
    iput-boolean p3, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1202
    return-void
.end method

.method static synthetic access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1155
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1235
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1225
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 1213
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 1215
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1216
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1219
    :cond_0
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1260
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 1261
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->this$0:Landroid/widget/ListPopupWindow;

    #getter for: Landroid/widget/ListPopupWindow;->mOnWindowFocusChangeListener:Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$700(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->this$0:Landroid/widget/ListPopupWindow;

    #getter for: Landroid/widget/ListPopupWindow;->mOnWindowFocusChangeListener:Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$700(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListPopupWindow$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    .line 1264
    :cond_0
    return-void
.end method
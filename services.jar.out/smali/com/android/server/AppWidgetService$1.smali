.class Lcom/android/server/AppWidgetService$1;
.super Ljava/lang/Thread;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;

.field final synthetic val$id:Lcom/android/server/AppWidgetService$AppWidgetId;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iput-object p2, p0, Lcom/android/server/AppWidgetService$1;->val$id:Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v1, p0, Lcom/android/server/AppWidgetService$1;->val$id:Lcom/android/server/AppWidgetService$AppWidgetId;

    #calls: Lcom/android/server/AppWidgetService;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    invoke-static {v0, v1}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 416
    return-void
.end method

.class Landroid/service/wallpaper/WallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 133
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doScreenOnOff(Z)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0           #i:I
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 139
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doScreenOnOff(Z)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0           #i:I
    :cond_1
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "tablet"

    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 144
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$1;->this$0:Landroid/service/wallpaper/WallpaperService;

    #getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doScreenOnOff(Z)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    .end local v0           #i:I
    :cond_2
    return-void
.end method

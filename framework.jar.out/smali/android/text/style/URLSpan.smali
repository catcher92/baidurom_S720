.class public Landroid/text/style/URLSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final IS_CMCC:Z


# instance fields
.field private final mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/text/style/URLSpan;->IS_CMCC:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xb

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "widget"

    .prologue
    const/4 v10, 0x1

    .line 65
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 66
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    .local v2, context:Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :try_start_0
    sget-boolean v11, Landroid/text/style/URLSpan;->IS_CMCC:Z

    if-eqz v11, :cond_4

    instance-of v11, p1, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    .line 72
    .local v8, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 73
    .local v5, isWebURL:Z
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, scheme:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 75
    const-string v11, "http"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "https"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "rtsp"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move v5, v10

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/widget/TextView;->isEnableShowUrlDialog()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v5, :cond_3

    .line 80
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x20500c5

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const v10, 0x20500c6

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 83
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 85
    const v10, 0x104000a

    new-instance v11, Landroid/text/style/URLSpan$1;

    invoke-direct {v11, p0, v2, v4}, Landroid/text/style/URLSpan$1;-><init>(Landroid/text/style/URLSpan;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const/high16 v10, 0x104

    new-instance v11, Landroid/text/style/URLSpan$2;

    invoke-direct {v11, p0}, Landroid/text/style/URLSpan$2;-><init>(Landroid/text/style/URLSpan;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v5           #isWebURL:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v8           #tv:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 75
    .restart local v5       #isWebURL:Z
    .restart local v7       #scheme:Ljava/lang/String;
    .restart local v8       #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v5           #isWebURL:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v8           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    .line 107
    .local v6, mChooserIntent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #mChooserIntent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method

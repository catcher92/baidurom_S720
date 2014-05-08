.class Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v5, 0x7f040071

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 1029
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1600(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1035
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1700(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "File miss!"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1041
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1042
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 1043
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1046
    if-ne v2, v4, :cond_5

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2000(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1065
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1066
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->finish()V

    goto/16 :goto_0

    .line 1049
    :cond_5
    if-nez v2, :cond_6

    .line 1050
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showMessage(I)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;I)V

    .line 1051
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->prepareRename()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1900(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)V

    goto/16 :goto_0

    .line 1054
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1055
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1069
    :cond_7
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedPosition:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2000(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1070
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1075
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "duration"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1076
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-virtual {v4, v0}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->isCorrectPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1079
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 1081
    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1085
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #getter for: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->mSelectedId:J
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1200(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;)J

    move-result-wide v4

    aput-wide v4, v0, v6

    .line 1087
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    invoke-static {v2, v0, v6}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->deleteTracks(Landroid/content/Context;[JZ)V

    .line 1090
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0, v1, v3}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$2100(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 1096
    :cond_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioRecorderHistory$10;->this$0:Lcom/mediatek/FMRadio/FMRadioRecorderHistory;

    #calls: Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->showMessage(I)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioRecorderHistory;->access$1800(Lcom/mediatek/FMRadio/FMRadioRecorderHistory;I)V

    goto/16 :goto_0
.end method

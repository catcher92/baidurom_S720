.class public Landroid/content/res/ThemeProperties;
.super Ljava/lang/Object;
.source "ThemeProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentControlTheme()I
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.control"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 24
    :goto_0
    if-nez v0, :cond_0

    .line 25
    const v0, 0x10302f0

    .line 27
    :cond_0
    return v0

    .line 22
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeButtonIndex()I
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.button"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeCheckBoxIndex()I
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.checkbox"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeDialogIndex()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeIndex()I
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.theme"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    if-gtz v0, :cond_0

    .line 38
    const v0, 0x103006b

    .line 40
    :cond_0
    return v0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeRadioIndex()I
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.radio"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSectionLineIndex()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.sectionline"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSeekbarIndex()I
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.seekbar"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSwitchIndex()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTabBackgroundIndex()I
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.tab"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleBackgroundIndex()I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.titleback"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleColorIndex()I
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, index:I
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.titlecolor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setControlTheme(I)V
    .locals 2
    .parameter "controltheme"

    .prologue
    .line 146
    if-gtz p0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.control"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentThemeButtonIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 171
    move v0, p0

    .line 172
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.button"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static setCurrentThemeCheckBoxIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 180
    move v0, p0

    .line 181
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.checkbox"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static setCurrentThemeDialogIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 207
    move v0, p0

    .line 208
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.dialog"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static setCurrentThemeRadioIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 189
    move v0, p0

    .line 190
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.radio"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static setCurrentThemeSectionLineIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 243
    move v0, p0

    .line 244
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.sectionline"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static setCurrentThemeSeekbarIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 225
    move v0, p0

    .line 226
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.seekbar"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static setCurrentThemeSwitchIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 216
    move v0, p0

    .line 217
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.switch"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static setCurrentThemeTabBackgroundIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 234
    move v0, p0

    .line 235
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.tab"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static setCurrentThemeTitleBackgroundIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 198
    move v0, p0

    .line 199
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.titleback"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static setCurrentThemeTitleColorIndex(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 162
    move v0, p0

    .line 163
    .local v0, newid:I
    if-gez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :cond_0
    const-string/jumbo v1, "persist.sys.skin.titlecolor"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static setThemeId(I)V
    .locals 2
    .parameter "theme_id"

    .prologue
    .line 154
    if-gtz p0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string/jumbo v0, "persist.sys.skin.theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

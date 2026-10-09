.class final Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelativeSortedPaths"
.end annotation


# instance fields
.field final equals:Z

.field final relativeFileList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final relativeFileList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V
    .locals 17
    .param p1, "dir1"    # Ljava/nio/file/Path;
    .param p2, "dir2"    # Ljava/nio/file/Path;
    .param p3, "maxDepth"    # I
    .param p4, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p5, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, "tmpRelativeFileList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v7, 0x0

    .line 119
    .local v7, "tmpRelativeFileList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const/4 v8, 0x1

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 120
    iput-boolean v8, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_5

    .line 121
    :cond_0
    const/4 v9, 0x0

    if-nez v1, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v9

    :goto_0
    if-nez v2, :cond_2

    move v11, v8

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    xor-int/2addr v10, v11

    if-eqz v10, :cond_3

    .line 122
    iput-boolean v9, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_5

    .line 124
    :cond_3
    invoke-static {v1, v4}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    .line 125
    .local v10, "parentDirNotExists1":Z
    invoke-static {v2, v4}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v11

    .line 126
    .local v11, "parentDirNotExists2":Z
    if-nez v10, :cond_8

    if-eqz v11, :cond_4

    goto :goto_3

    .line 129
    :cond_4
    invoke-static {v1, v3, v5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v12

    .line 130
    .local v12, "visitor1":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {v2, v3, v5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v13

    .line 131
    .local v13, "visitor2":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-virtual {v12}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_7

    invoke-virtual {v12}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_5

    goto :goto_2

    .line 134
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v12, v1, v8, v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v15

    .line 135
    .local v15, "tmpRelativeDirList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-virtual {v13, v2, v8, v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 136
    .local v9, "tmpRelativeDirList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 137
    const/4 v8, 0x0

    iput-boolean v8, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_5

    .line 139
    :cond_6
    invoke-virtual {v12, v1, v8, v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    .line 140
    invoke-virtual {v13, v2, v8, v14}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_5

    .line 132
    .end local v9    # "tmpRelativeDirList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    .end local v15    # "tmpRelativeDirList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    :cond_7
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_5

    .line 127
    .end local v12    # "visitor1":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .end local v13    # "visitor2":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    goto :goto_4

    :cond_9
    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 148
    .end local v10    # "parentDirNotExists1":Z
    .end local v11    # "parentDirNotExists2":Z
    :goto_5
    iput-object v6, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 149
    iput-object v7, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/file/Path;
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Ljava/nio/file/LinkOption;
    .param p5, "x4"    # [Ljava/nio/file/FileVisitOption;
    .param p6, "x5"    # Lorg/apache/commons/io/file/PathUtils$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method

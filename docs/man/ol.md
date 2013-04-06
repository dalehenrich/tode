##NAME
  ol - object log (list, clear, ilist)

##SYNOPSIS
  ol clear { <priority-list> ]

  ol list [ <priority-list> ]

  ol ilist <priority-list>

##DESCRIPTION
  An <priority-list> is one or more of the following:



    debug

    error

    fatal

    info

    trace

    transcript

    warn



  An empty <priority-list> implies the entire object log.



  `ilist` variant lists inverse of priority list (i.e.,

  `ol ilist transcript` lists all priorities except `transcript`.
